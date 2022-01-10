<h1>Books</h1>

<table>
  <thead>
   <tr>
    <th>Title</th>
    <th>Body</th>
    <th></th>
   </tr>
  </thead>

  <tbody>
    <% @lists.each do |list| %>
      <tr> 
        <td>
          <%= list.title %>
        </td>
        <td>
          <%= list.body %>
        </td>
        <td>
          <%= link_to "show", list_path(list.id) %>
          <%= link_to "edit", edit_list_path(list.id) %>
          <%= link_to "destroy", destroy_list_path(list.id), method: :delete, "data-confirm" => "Are you sure?" %>
        </td>
      </tr>  
    <% end %>
  </tbody>   
</table>


<h3>New book</h3>
<%= form_with model: List.index, local:true do |f| %>
  <h4>Title</h4>
  <%= f.text_field :title %>
	
  <h4>Body</h4>
  <%= f.text_area :body %>
	
  <%= f.submit 'Create Book' %>
<% end %>
