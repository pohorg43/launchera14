.class public Lv1/n;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;)I
    .registers 3

    const-string v0, "4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x647

    if-eqz v0, :cond_b

    goto :goto_36

    :cond_b
    const-string v0, "6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0x649

    goto :goto_36

    :cond_16
    const-string v0, "8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v1, 0x64b

    goto :goto_36

    :cond_21
    const-string v0, "7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v1, 0x64a

    goto :goto_36

    :cond_2c
    const-string v0, "5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/16 v1, 0x648

    :cond_36
    :goto_36
    return v1
.end method

.method public static b(Landroid/content/Context;Lz1/a;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p1}, Lz1/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Lz1/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lz1/a;->k()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x11f8

    invoke-static {p0, v2}, Lv1/q;->a(Landroid/content/Context;I)Z

    move-result v2

    const-string v3, "gb"

    const-string/jumbo v4, "softmarket://market_mainmenu?params="

    const-string v5, "="

    const-string v6, "&"

    const-string v7, "enter_id="

    if-eqz v2, :cond_42

    const-string/jumbo p0, "out_operator#"

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "enter_params"

    invoke-static {v7, v1, v6, p1, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, p0}, Lv1/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v6, v3, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    const/16 v2, 0x11c6

    invoke-static {p0, v2}, Lv1/q;->a(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_61

    const-string/jumbo p0, "out_operator"

    invoke-static {v7, v1, v6, p0, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1}, Lv1/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v6, v3, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_61
    const-string p0, ""

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lz1/d;)Ljava/lang/String;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    invoke-virtual/range {p1 .. p1}, Lz1/b;->n()J

    move-result-wide v3

    :try_start_a
    const-string/jumbo v5, "pkg"

    invoke-virtual {v1, v5}, Lv1/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_13
    .catch Lv1/r; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-object v5, v2

    :goto_15
    :try_start_15
    const-string v6, "atd"

    invoke-virtual {v1, v6}, Lv1/s;->b(Ljava/lang/String;)Z

    move-result v6
    :try_end_1b
    .catch Lv1/r; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    const/4 v6, 0x0

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lz1/a;->m()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lz1/a;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lz1/a;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lz1/a;->l()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Lv1/n;->a(Ljava/lang/String;)I

    move-result v11

    :try_start_37
    const-string v12, "Ext-Module"

    invoke-virtual {v1, v12}, Lv1/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_3f
    .catch Lv1/r; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-object v1, v2

    :goto_41
    const/16 v12, 0x11f8

    invoke-static {v0, v12}, Lv1/q;->a(Landroid/content/Context;I)Z

    move-result v12

    const-string v13, "gb"

    const-string/jumbo v14, "softmarket://market_appdetail?params="

    const-string v15, "enter_id"

    move-object/from16 v16, v2

    const-string/jumbo v2, "out_intent_from"

    const-string/jumbo v0, "out_start_download"

    move/from16 v17, v7

    const-string v7, "="

    move-object/from16 p1, v13

    const-string/jumbo v13, "out_package_name"

    move-object/from16 v18, v14

    const-string v14, "&"

    move-object/from16 v19, v8

    const-string/jumbo v8, "out_pid="

    if-eqz v12, :cond_dc

    const-string v12, "Ext-Module#"

    invoke-static {v12, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v12, "out_operator#"

    invoke-static {v12, v9}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v10}, Lv1/p;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_80

    move-object/from16 v10, v16

    goto :goto_86

    :cond_80
    const-string v12, "^out_match_type#"

    invoke-static {v12, v10}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v7, v5, v14, v0}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v7, v11, v14, v15}, Lcom/android/common/util/h0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "enter_params"

    move-object/from16 v12, v19

    invoke-static {v10, v7, v12, v14, v0}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cpd_params"

    invoke-static {v10, v7, v9, v14, v0}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v2, v0, v14, v1, v7}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_dc
    move-object/from16 v1, p1

    move-object/from16 p1, v0

    move-object/from16 v12, v19

    const/16 v0, 0x11c6

    move-object/from16 v19, v1

    move-object/from16 v20, v10

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-static {v1, v0}, Lv1/q;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_143

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v5, v14, v10}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v11, v14, v15}, Lcom/android/common/util/h0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "out_operator"

    invoke-static {v0, v7, v12, v14, v1}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "out_match_type"

    invoke-static {v0, v7, v9, v14, v1}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    invoke-static {v2, v0, v14, v1, v7}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_143
    return-object v16
.end method

.method public static d(Landroid/content/Context;Lz1/e;)Ljava/lang/String;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    :try_start_6
    const-string v3, "kw"

    invoke-virtual {v1, v3}, Lv1/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_e
    .catch Lv1/r; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-object v3, v2

    :goto_10
    :try_start_10
    const-string/jumbo v4, "pkg"

    invoke-virtual {v1, v4}, Lv1/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_19
    .catch Lv1/r; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    move-object v4, v2

    :goto_1b
    :try_start_1b
    const-string v5, "ad"

    invoke-virtual {v1, v5}, Lv1/s;->b(Ljava/lang/String;)Z

    move-result v5
    :try_end_21
    .catch Lv1/r; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    const/4 v5, 0x0

    :goto_23
    invoke-virtual/range {p1 .. p1}, Lz1/a;->m()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lz1/a;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lz1/a;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lz1/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lv1/n;->a(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x11f8

    invoke-static {v0, v10}, Lv1/q;->a(Landroid/content/Context;I)Z

    move-result v10

    const-string v11, "gb"

    const-string/jumbo v12, "softmarket://market_search_result?params="

    const-string v13, "enter_id"

    const-string/jumbo v14, "out_intent_from"

    const-string/jumbo v15, "out_start_download"

    move-object/from16 v16, v2

    const-string/jumbo v2, "out_operator"

    const-string v0, "="

    move/from16 v17, v6

    const-string/jumbo v6, "out_app_name"

    move-object/from16 p1, v11

    const-string v11, "&"

    move-object/from16 v18, v12

    const-string/jumbo v12, "out_package_name="

    if-eqz v10, :cond_be

    const-string/jumbo v10, "out_operator#"

    invoke-static {v10, v8}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Lv1/p;->a(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_79

    move-object/from16 v19, v7

    move-object/from16 v1, v16

    goto :goto_81

    :cond_79
    move-object/from16 v19, v7

    const-string v7, "^out_match_type#"

    invoke-static {v7, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_81
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v4, v11, v6, v0}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v3, v11, v2, v0}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v8, v11, v15, v0}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v9, v11, v13, v0}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "enter_params"

    move-object/from16 v7, v19

    invoke-static {v4, v7, v11, v2, v0}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lv1/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, p1

    move-object/from16 v2, v18

    invoke-static {v2, v1, v11, v10, v0}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_be
    move-object/from16 v10, p1

    move-object/from16 p1, v0

    const/16 v0, 0x11c6

    move-object/from16 v19, v10

    move-object/from16 v10, p0

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 p1, v20

    invoke-static {v10, v0}, Lv1/q;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-static {v12, v4, v11, v6, v1}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v3, v11, v2, v1}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v8, v11, v15, v1}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v9, v11, v13, v1}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7, v11, v2, v1}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "out_match_type"

    invoke-static {v0, v8, v11, v2, v1}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-static {v0, v2}, Lv1/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    invoke-static {v3, v0, v11, v2, v1}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10e
    return-object v16
.end method

.method public static final e(Lp7/d;Lm7/j0;)Lm7/s1;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp7/d<",
            "+TT;>;",
            "Lm7/j0;",
            ")",
            "Lm7/s1;"
        }
    .end annotation

    new-instance v3, Lp7/g;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lp7/g;-><init>(Lp7/d;Ll4/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    return-object p0
.end method
