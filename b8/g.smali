.class public final Lb8/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Z

.field public final b:Lb8/h;


# direct methods
.method public constructor <init>(Lb8/c;Lb8/h;)V
    .registers 4

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb8/g;->b:Lb8/h;

    iget-boolean p1, p1, Lb8/c;->c:Z

    iput-boolean p1, p0, Lb8/g;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/json/JsonElement;
    .registers 11

    iget-object v0, p0, Lb8/g;->b:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->f()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_124

    iget-object v0, p0, Lb8/g;->b:Lb8/h;

    iget-byte v4, v0, Lb8/h;->b:B

    if-eqz v4, :cond_11f

    const/4 v5, 0x1

    if-eq v4, v5, :cond_11a

    const-string v6, "Unexpected leading comma"

    const/4 v7, 0x4

    const/4 v8, 0x6

    if-eq v4, v8, :cond_91

    const/16 v8, 0x8

    if-eq v4, v8, :cond_2f

    const/16 p0, 0xa

    if-ne v4, p0, :cond_29

    sget-object p0, La8/r;->a:La8/r;

    invoke-virtual {v0}, Lb8/h;->g()V

    goto/16 :goto_123

    :cond_29
    const-string p0, "Can\'t begin reading element, unexpected token"

    invoke-static {v0, p0, v2, v1}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    throw v3

    :cond_2f
    if-ne v4, v8, :cond_89

    invoke-virtual {v0}, Lb8/h;->g()V

    iget-object v0, p0, Lb8/g;->b:Lb8/h;

    iget-byte v1, v0, Lb8/h;->b:B

    if-eq v1, v7, :cond_3c

    move v1, v5

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    iget v4, v0, Lb8/h;->a:I

    if-eqz v1, :cond_85

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_46
    move v1, v2

    :goto_47
    iget-object v4, p0, Lb8/g;->b:Lb8/h;

    invoke-virtual {v4}, Lb8/h;->f()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {p0}, Lb8/g;->a()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb8/g;->b:Lb8/h;

    iget-byte v4, v1, Lb8/h;->b:B

    if-eq v4, v7, :cond_69

    const/16 v6, 0x9

    if-ne v4, v6, :cond_61

    goto :goto_46

    :cond_61
    iget p0, v1, Lb8/h;->c:I

    const-string v0, "Expected end of the array or comma"

    invoke-virtual {v1, v0, p0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_69
    invoke-virtual {v1}, Lb8/h;->g()V

    move v1, v5

    goto :goto_47

    :cond_6e
    iget-object p0, p0, Lb8/g;->b:Lb8/h;

    xor-int/2addr v1, v5

    iget v2, p0, Lb8/h;->a:I

    if-eqz v1, :cond_7f

    invoke-virtual {p0}, Lb8/h;->g()V

    new-instance p0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    goto/16 :goto_123

    :cond_7f
    const-string v0, "Unexpected trailing comma"

    invoke-virtual {p0, v0, v2}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_85
    invoke-virtual {v0, v6, v4}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_89
    iget p0, v0, Lb8/h;->c:I

    const-string v1, "Expected start of the array"

    invoke-virtual {v0, v1, p0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_91
    if-ne v4, v8, :cond_112

    invoke-virtual {v0}, Lb8/h;->g()V

    iget-object v0, p0, Lb8/g;->b:Lb8/h;

    iget-byte v1, v0, Lb8/h;->b:B

    if-eq v1, v7, :cond_9e

    move v1, v5

    goto :goto_9f

    :cond_9e
    move v1, v2

    :goto_9f
    iget v4, v0, Lb8/h;->a:I

    if-eqz v1, :cond_10e

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_a8
    move v1, v2

    :goto_a9
    iget-object v4, p0, Lb8/g;->b:Lb8/h;

    invoke-virtual {v4}, Lb8/h;->f()Z

    move-result v4

    const/4 v6, 0x7

    if-eqz v4, :cond_f2

    iget-boolean v1, p0, Lb8/g;->a:Z

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lb8/g;->b:Lb8/h;

    invoke-virtual {v1}, Lb8/h;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_c3

    :cond_bd
    iget-object v1, p0, Lb8/g;->b:Lb8/h;

    invoke-virtual {v1}, Lb8/h;->j()Ljava/lang/String;

    move-result-object v1

    :goto_c3
    iget-object v4, p0, Lb8/g;->b:Lb8/h;

    const/4 v8, 0x5

    iget-byte v9, v4, Lb8/h;->b:B

    if-ne v9, v8, :cond_ea

    invoke-virtual {v4}, Lb8/h;->g()V

    invoke-virtual {p0}, Lb8/g;->a()Lkotlinx/serialization/json/JsonElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lb8/g;->b:Lb8/h;

    iget-byte v4, v1, Lb8/h;->b:B

    if-eq v4, v7, :cond_e5

    if-ne v4, v6, :cond_dd

    goto :goto_a8

    :cond_dd
    iget p0, v1, Lb8/h;->c:I

    const-string v0, "Expected end of the object or comma"

    invoke-virtual {v1, v0, p0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_e5
    invoke-virtual {v1}, Lb8/h;->g()V

    move v1, v5

    goto :goto_a9

    :cond_ea
    iget p0, v4, Lb8/h;->c:I

    const-string v0, "Expected \':\'"

    invoke-virtual {v4, v0, p0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_f2
    iget-object p0, p0, Lb8/g;->b:Lb8/h;

    if-nez v1, :cond_fb

    iget-byte v1, p0, Lb8/h;->b:B

    if-ne v1, v6, :cond_fb

    move v2, v5

    :cond_fb
    iget v1, p0, Lb8/h;->a:I

    if-eqz v2, :cond_108

    invoke-virtual {p0}, Lb8/h;->g()V

    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    goto :goto_123

    :cond_108
    const-string v0, "Expected end of the object"

    invoke-virtual {p0, v0, v1}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_10e
    invoke-virtual {v0, v6, v4}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_112
    iget p0, v0, Lb8/h;->c:I

    const-string v1, "Expected start of the object"

    invoke-virtual {v0, v1, p0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_11a
    invoke-virtual {p0, v5}, Lb8/g;->b(Z)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    goto :goto_123

    :cond_11f
    invoke-virtual {p0, v2}, Lb8/g;->b(Z)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    :goto_123
    return-object p0

    :cond_124
    iget-object p0, p0, Lb8/g;->b:Lb8/h;

    const-string v0, "Can\'t begin reading value from here"

    invoke-static {p0, v0, v2, v1}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    throw v3
.end method

.method public final b(Z)Lkotlinx/serialization/json/JsonElement;
    .registers 3

    iget-boolean v0, p0, Lb8/g;->a:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lb8/g;->b:Lb8/h;

    invoke-virtual {p0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_b
    iget-object p0, p0, Lb8/g;->b:Lb8/h;

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lb8/h;->j()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object p0

    :goto_18
    new-instance v0, La8/p;

    invoke-direct {v0, p0, p1}, La8/p;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method
