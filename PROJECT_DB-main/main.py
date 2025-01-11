from flask import Flask,render_template,request,session,redirect, url_for,flash
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import func,text
from flask_login import UserMixin
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_user,logout_user,LoginManager,login_manager
from flask_login import login_required,current_user
#from socket import socket


#db connection
local_server=True
app= Flask(__name__)
app.secret_key='shashi'


#for getting unique user access
login_manager=LoginManager(app)
login_manager.login_view='login'

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))





#app.config['SQLALCHY_DATABASE_URI']='mysql://username:passwaord@localhost/database_table_name'
app.config['SQLALCHEMY_DATABASE_URI']='mysql://root:@localhost/cr6_automation'
db=SQLAlchemy(app)


#app = Flask(__name__)

#creating db modle i.e tables
class Dept(db.Model):
    dno=db.Column(db.Integer(),primary_key=True)
    dname=db.Column(db.String(100))

class User(UserMixin,db.Model):
    id=db.Column(db.Integer,primary_key=True)
    name=db.Column(db.String(50))
    email=db.Column(db.String(50),unique=True)
    password=db.Column(db.String(1000))


class Room(db.Model):
    rno=db.Column(db.String(50),primary_key=True)
    dno=db.Column(db.Integer())


class Item(db.Model):
    item_id=db.Column(db.String(50),primary_key=True)
    item_name=db.Column(db.String(100))
    rno=db.Column(db.String(50))



class Movement(db.Model):
    item_id=db.Column(db.String(50),primary_key=True)
    from_rno=db.Column(db.String(50))
    to_rno=db.Column(db.String(50))

class Category(db.Model):
    item_name=db.Column(db.String(50),primary_key=True)


class Vender(db.Model):
    vid=db.Column(db.String(50),primary_key=True)
    name=db.Column(db.String(50))
    billing=db.Column(db.String(1000))

class Logs(db.Model):
    id=db.Column(db.Integer(),primary_key=True)
    item_id=db.Column(db.String(50))
    action=db.Column(db.String(50))
    cdate=db.Column(db.String(50))

#passing end points and run the functions 

@app.route('/')
def index():
    return render_template('index.html')


@app.route('/home', methods=['POST', 'GET'])
@login_required
def home():
    # Using db.session.execute() instead of db.engine.execute()
    query = db.session.execute(text("SELECT * FROM category"))
    
    # Render the template with the query results
    return render_template('item.html', query=query)

@app.route('/cat', methods=['POST', 'GET'])
@login_required
def cat():
    if request.method == "POST":
        item = request.form.get('item')
        
        # Use SQLAlchemy's ORM to add a new category
        new_category = Category(item_name=item)  # Create a new Category instance
        db.session.add(new_category)  # Add the new category to the session
        db.session.commit()  # Commit the transaction
        
        flash(item + " added", "warning")
        return redirect(url_for('home'))
    
    return render_template('item.html')


@app.route('/movement', methods=['POST', 'GET'])
def movement():
    if request.method == "POST":
        item = request.form.get('item')
        frno = request.form.get('frno')
        trno = request.form.get('trno')

        if trno == "scrap":
            # Use db.session.execute with text for safe execution
            query = db.session.execute(text("DELETE FROM item WHERE item_id = :item"), {'item': item})
            flash(f"{item} deleted", "warning")
            return redirect(url_for('home'))
        
        # Update item room number
        query = db.session.execute(text("UPDATE item SET rno = :trno WHERE item_id = :item"),
                                   {'trno': trno, 'item': item})

        # Insert into movement table
        query = db.session.execute(text("INSERT INTO movement(item_id, from_rno, to_rno) VALUES(:item, :frno, :trno)"),
                                   {'item': item, 'frno': frno, 'trno': trno})

        # Get categories
        cquery = db.session.execute(text("SELECT * FROM category"))
        flash(f"{item} moved from room {frno} to room {trno}", "warning")
        return render_template('item.html', query=cquery)
    
    return render_template('movement.html')

@app.route('/movement1', methods=['POST', 'GET'])
def movement1():
    # Using db.session.execute() instead of db.engine.execute()
    query = db.session.execute(text("SELECT * FROM movement"))
    
    # Render the template with the query results
    return render_template('movement1.html', query=query)



@app.route('/dept', methods=['POST', 'GET'])
@app.route('/dept', methods=['POST', 'GET'])
@login_required
def dept():
    # Using text() for raw SQL queries
    query0 = db.session.execute(text("SELECT * FROM room WHERE rno != :scrap"), {'scrap': 'scrap'})
    query1 = db.session.execute(text("SELECT i.item_id, i.rno FROM item i, dept d, room r WHERE d.dno = r.dno AND i.rno = r.rno AND d.dname = :dept ORDER BY i.item_id"), {'dept': 'ISE'})
    query2 = db.session.execute(text("SELECT i.item_id, i.rno FROM item i, dept d, room r WHERE d.dno = r.dno AND i.rno = r.rno AND d.dname = :dept ORDER BY i.item_id"), {'dept': 'ISE'})
    query3 = db.session.execute(text("SELECT * FROM room"))

    if request.method == "POST":
        name = request.form.get('dept')
        if name == 'ISE':
            query0 = db.session.execute(text("SELECT * FROM room WHERE rno != :scrap"), {'scrap': 'scrap'})
            query1 = db.session.execute(text("SELECT i.item_id, i.rno FROM item i, dept d, room r WHERE d.dno = r.dno AND i.rno = r.rno AND d.dname = :dept ORDER BY i.item_id"), {'dept': name})
            query2 = db.session.execute(text("SELECT i.item_id, i.rno FROM item i, dept d, room r WHERE d.dno = r.dno AND i.rno = r.rno AND d.dname = :dept ORDER BY i.item_id"), {'dept': name})
            query3 = db.session.execute(text("SELECT * FROM room"))
            return render_template('dept.html', query=[query0, query1, query2, query3])

        elif name.lower() == 'cse':
            query = db.session.execute(text("SELECT i.item_id, i.rno FROM item i, dept d, room r WHERE d.dno = r.dno AND i.rno = r.rno AND d.dname = :dept ORDER BY i.item_id"), {'dept': name})
            return render_template('dept.html', query=query)
        elif name.lower() == 'ece':
            query = db.session.execute(text("SELECT i.item_id, i.rno FROM item i, dept d, room r WHERE d.dno = r.dno AND i.rno = r.rno AND d.dname = :dept ORDER BY i.item_id"), {'dept': name})
            return render_template('dept.html', query=query)
        else:
            flash("Invalid dept", "danger")

        flash(name, "danger")
    return render_template('dept.html', query=[query0, query1, query2, query3])

@app.route('/out', methods=['POST', 'GET'])
@login_required
def out():
    # Using db.session.execute() instead of db.engine.execute()
    query0 = db.session.execute(text("SELECT * FROM room WHERE rno != 'scrap'"))
    query3 = db.session.execute(text("SELECT dno FROM room WHERE rno != 'scrap'"))
    
    if request.method == "POST":
        rno = request.form.get('rno')
        
        # Execute the queries when POST request is made
        query1 = db.session.execute(text("SELECT * FROM room WHERE rno != 'scrap'"))
        query2 = db.session.execute(text(f"SELECT i.item_id, i.item_name, i.rno, d.dname FROM item i, dept d, room r "
                                        f"WHERE d.dno = r.dno AND i.rno = r.rno AND i.rno = :rno ORDER BY i.item_id"),
                                   {'rno': rno})
        
        # Render the template with updated queries
        return render_template('out.html', query=[query1, query2])
    
    # Render template with initial queries when GET request is made
    return render_template('out.html', query=[query0, query3])



@app.route('/item',methods=['POST','GET'])
@login_required
def item():
    if request.method=="POST":
        name=request.form.get('dept')
        cquery = Category.query.all()
        rquery=Room.query.filter(Room.rno !='scrap').all()
        vquery=Vender.query.all()
        if name.lower()=='ise':
            return render_template('ise.html',query=[cquery,rquery,vquery])
        elif name.lower()=='cse':
            return render_template('cse.html')
        elif name.lower()=='ece':
            return render_template('ece.html')
        else:
            flash("Invalid dept","deanger")

        flash(name,"warning")

    return render_template('item.html')



@app.route('/ise',methods=['POST','GET'])
@login_required
def ise():
    if request.method=="POST":
            dept=request.form.get('dept')
            itemm=request.form.get('item')
            rno=request.form.get('rno')
            vid=request.form.get('vid')
            
            x=Item.query.filter_by(item_name=itemm).count()
            x=x+1
            if x<10:
                item="MITM/"+dept+"/"+rno+"/"+itemm+"00"
            elif x>=10 and x<100:
                item="MITM/"+dept+"/"+rno+"/"+itemm+"0"
            else:
                item="MITM/"+dept+"/"+rno+"/"+itemm
            x=str(x)

            itemid=item+x

            # Use ORM to insert a new item
            new_item = Item(item_id=itemid, item_name=itemm, rno=rno)
            db.session.add(new_item)  # Add the new item to the session
            db.session.commit()  # Commit the transaction

            query = Category.query.all()
            flash(itemm+" added succesfully","warning")
            return render_template('item.html',query=query)


    return render_template('ise.html')




@app.route('/signin', methods=['POST', 'GET'])
def signin():
    if request.method == "POST":
        name = request.form.get('name')
        email = request.form.get('email')
        password = request.form.get('password')

        # Check if user already exists
        user = User.query.filter_by(email=email).first()
        if user:
            flash("Email already exists", "warning")
            return render_template('signin.html')

        # Hash password
        encpass = generate_password_hash(password)

        # Create a new user instance
        new_user = User(name=name, email=email, password=encpass)

        # Add and commit the new user to the database
        db.session.add(new_user)
        db.session.commit()

        flash("Sign up successful! Please log in.", "success")
        return render_template('login.html')
    
    return render_template('signin.html')

@app.route('/login',methods=['POST','GET'])
def login():
    if request.method=="POST":
        #name=request.form.get('name')
        email=request.form.get('email')
        password=request.form.get('password')
        user=User.query.filter_by(email=email).first()

        if user and check_password_hash(user.password,password):
            login_user(user)
            flash("Login Success","primary")
            query = Category.query.all()
            return render_template('item.html',query=query)
        else:
            flash("Invalid User Id or password","danger")
            return render_template('login.html')
    return render_template('login.html')


@app.route('/log')
@login_required
def log():
    query = db.session.execute(text("SELECT * FROM logs"))
    return render_template('logs.html', query=query)

@app.route('/van', methods=['POST', 'GET'])
@login_required
def van():
    query = db.session.execute(text("SELECT * FROM vender"))
    
    if request.method == "POST":
        vid = request.form.get('vid')
        vname = request.form.get('vname')
        
        # Insert the vendor with parameters to prevent SQL injection
        query = db.session.execute(text("INSERT INTO vender(vid, name, billing) VALUES (:vid, :vname, 'NULL')"),
                                   {'vid': vid, 'vname': vname})
        
        flash("New vendor added", "warning")
        
        # Query to get the updated list of vendors
        query1 = db.session.execute(text("SELECT * FROM vender"))
        return render_template('vender.html', query=query1)
    
    return render_template('vender.html', query=query)


@app.route('/logout')
@login_required
def logout():
    logout_user()
    flash("Logout Successful","warning")
    return redirect(url_for('login'))


@app.route('/test')
def test():
    # a=Dept.query.all()
    # print(a)
    # return render_template('index.html')
    try:
        Dept.query.all()
        return 'Database connected'
    except:
        return 'Database not connected'

app.run(host='127.0.0.1',port=8080,debug=True)


