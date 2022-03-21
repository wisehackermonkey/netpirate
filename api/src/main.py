from flask import Flask
from flask_restx import Resource, Api

app = Flask(__name__)
api = Api(app)

@api.route('/v1/morse')
class HelloWorld(Resource):
    def put(self):
        return {'sent': 'world'}

if __name__ == '__main__':
    print("NetPirate Api Server has started")
    app.run(host='0.0.0.0', debug=True, port=80)
    # app.run(host='0.0.0.0', port=80)