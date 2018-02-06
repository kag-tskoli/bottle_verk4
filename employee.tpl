<!doctype html>
<html>
<head>
    <title>Employee nr. {{n}}</title>
    <link rel="stylesheet" href="/static/styles.css">
    <meta charset="utf-8">
</head>
<body>

    <%
    import json
    with open('data.json', 'r') as f:
        staff = json.load(f)
    end
    for person in staff:
        if person['work_id'] == n:
            name = person['name']
            email = person['email']
            tel = person['telephone']
        end
    end
    %>
    <h2>Employee nr. {{n}}</h2>
    <h3>Name: {{name}}</h3>
    <h3>Email: {{email}}</h3>
    <h3>Telephone: {{tel}}</h3>

    <p><a href="/">Home</a></p>

</body>
</html>

