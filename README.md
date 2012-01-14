#knife role viz

Generate dot files illustrating your Chef role relationships

##Install
Copy to `~/.chef/plugins/knife/` or similar.

##Usage
`knife role viz | dot -Tpng -o roles.png && display roles.png`

##Examples
![first example](https://github.com/jjhuff/knife-plugin-role-viz/raw/master/examples/roles1.png)
![second example](https://github.com/jjhuff/knife-plugin-role-viz/raw/master/examples/roles2.png)
