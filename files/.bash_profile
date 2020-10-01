new-react() {
    if [ -z "$1" ]
    then
        echo "Use o formato: new-react <nome>"
    else
        name = "$1" | tr '[:upper:]' '[:lower:]'
        cd $HOME/Apps
        yarn create react-app $1
        cd $1
        code .
        yarn start
    fi
}

new-native(){
    if [ -z "$1" ]
    then
        echo "Use o formato: new-native <nome>"
    else
        cd $HOME/Apps
        yarn create react-native-app $1
        cd $1
        code .
        yarn web
    fi
}

new-next(){
    if [ -z "$1" ]
    then
        echo "Use o formato: new-next <nome>"
    else
        cd $HOME/Apps
        yarn create next-app $1
        cd $1
        code .
        yarn dev
    fi
}

new-node(){
    if [ -z "$1" ]
    then
        echo "Use o formato: new-node <nome>"
    else
        mkdir $HOME/Apps/$1
        cd $HOME/Apps/$1
        git init
        mkdir src
        touch index.js
        echo "node_modules" > .gitignore
        yarn init -y
        code .
    fi
}

new-express(){
    if [ -z "$1" ]
    then
        echo "Use o formato: new-express <nome>"
    else
        mkdir $HOME/Apps/$1
        cd $HOME/Apps/$1
        git init
        mkdir src
        touch index.js
        cat > index.js << EOL
const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Your friend, Dracula.')
})

app.listen(port, () => {
  console.log(`Listening at http://localhost:${port}`)
})
EOL
        echo "node_modules" > .gitignore
        yarn init -y
        yarn add express cors
        yarn add -D nodemon
        code .
    fi
}

new-koa(){
    if [ -z "$1" ]
    then
        echo "Use o formato: new-koa <nome>"
    else
        mkdir $HOME/Apps/$1
        cd $HOME/Apps/$1
        git init
        mkdir src
        touch index.js
        cat > index.js << EOL
const Koa = require('koa')
const app = new Koa()

app.use(async ctx => {
  ctx.body = 'Your friend, Dracula.'
})

app.listen(3000)
EOL
        echo "node_modules" > .gitignore
        yarn init -y
        yarn add koa @koa/cors
        yarn add -D nodemon
        code .
    fi
}

new-expo(){
    if [ -z "$1" ]
    then
        echo "Use o formato: new-expo <nome>"
    else
        cd $HOME/Apps
        expo init $1
        cd $1
        code .
        expo start
    fi
}

gmail(){
    if [ -z $1 ]
    then
        echo "Use o formato: gmail <email>"
    else
        google-chrome "https://mail.google.com/mail?view=cm&tf=0&to=$(echo $1 | sed 's/mailto://')"
    fi
}
