# Remember these Elixir Stuffs



## Maps

#### Additives

```elixir
Map.put(%{a: "b", c: "d"}, :e, "f")
# => %{a: "b", c: "d", e: "f"}

Map.put(%{a: "b", c: "d"}, :c, "g")
# => %{a: "b", c: "g"}

---

Map.put_new(%{a: "b", c: "d"}, :e: "f")
# => %{a: "b", c: "d", e: "f"}

Map.put_new(%{a: "b", c: "d"}, :c, "EE")
# => %{a: "b", c: "d"}

---

Map.merge(%{a: "b", c: "d", e: "f"}, %{e: "H", i: "j"})
# => %{a: "b", c: "d", e: "H", i: "j"}

Map.merge(%{a: "b", e: "f"}, %{e: "H", i: "j"}, fun(key, v_old, e_new) -> ...)
# resolves conflicts using fun
```



#### Update

```elixir
Map.update(%{a: "b", c: "d", e: "f"}, :a, "g", &(&1 <> "Z"))
# => %{a: "bZ", c: "d", e: "f"}
# if :a dont exist, ("g") => "gZ"

Map.update!(%{ ... }) ...
# if :a dont exist, !Raise

Map.replace!(%{a: "b", c: "d"}, c: "f")
# => %{a: "b", c: "f"}
# If :c don't exist, !Raise
```





#### Remove & Delete

```elixir
Map.delete(%{a: "b", c: "d"}, :c)
# => %{a: "b"}

Map.delete(%{a: "b", c: "d"}, :e)
# => %{a: "b", c: "d"}

---

Map.drop(%{a: "b", c: "d", e: "f"}, [:c, :g])
# => %{a: "b", e: "f"}
```



#### Remove & Extract

```elixir
Map.pop(%{a: "b", c: "d"}, :a, "otherwise return this text")
# => {"b", %{c: "d"}}
```

