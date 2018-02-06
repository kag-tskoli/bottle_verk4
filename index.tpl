<!doctype html>
<html>
<head>
    <title>Verkefni 4</title>
    <link rel="stylesheet" href="/static/styles.css">
    <meta charset="utf-8">
</head>
<body>
    <h1>Verkefni 4</h1>

    <%
    import json
    with open('data.json', 'r') as f:
        staff = json.load(f)
    end
    %>

    <table border="1">
        <tr>
            <th>Work ID</th>
            <th>Name:</th>
            <th>Email:</th>
            <th>Telephone:</th>
        </tr>
        % for person in staff:
            <tr>
                <td><a href="/employee/{{person['work_id']}}">{{person['work_id']}}</a></td>
                <td>{{person['name']}}</td>
                <td>{{person['email']}}</td>
                <td>{{person['telephone']}}</td>
            </tr>
        % end
    </table>
</body>
</html>

