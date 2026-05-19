.class public final La8/o;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(La8/a;Lkotlin/jvm/functions/Function1;I)La8/a;
    .registers 15

    const/4 p0, 0x1

    and-int/2addr p2, p0

    if-eqz p2, :cond_7

    sget-object p2, La8/a;->b:La8/a$a;

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La8/c;

    iget-object p2, p2, La8/a;->a:Lb8/c;

    invoke-direct {v0, p2}, La8/c;-><init>(Lb8/c;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, v0, La8/c;->h:Z

    if-eqz p1, :cond_37

    iget-object p1, v0, La8/c;->i:Ljava/lang/String;

    const-string p2, "type"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_37

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    iget-boolean p1, v0, La8/c;->e:Z

    const-string p2, "    "

    if-nez p1, :cond_52

    iget-object p0, v0, La8/c;->f:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    goto :goto_a0

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Indent should not be specified when default printing mode is used"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    iget-object p1, v0, La8/c;->f:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p0

    if-eqz p1, :cond_a0

    iget-object p1, v0, La8/c;->f:Ljava/lang/String;

    const/4 p2, 0x0

    move v1, p2

    :goto_5f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_84

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_7c

    const/16 v3, 0x9

    if-eq v2, v3, :cond_7c

    const/16 v3, 0xd

    if-eq v2, v3, :cond_7c

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7a

    goto :goto_7c

    :cond_7a
    move v2, p2

    goto :goto_7d

    :cond_7c
    :goto_7c
    move v2, p0

    :goto_7d
    if-nez v2, :cond_81

    move p0, p2

    goto :goto_84

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_84
    :goto_84
    if-eqz p0, :cond_87

    goto :goto_a0

    :cond_87
    const-string p0, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v0, La8/c;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a0
    :goto_a0
    new-instance p0, Lb8/c;

    iget-boolean v1, v0, La8/c;->a:Z

    iget-boolean v2, v0, La8/c;->b:Z

    iget-boolean v3, v0, La8/c;->c:Z

    iget-boolean v4, v0, La8/c;->d:Z

    iget-boolean v5, v0, La8/c;->e:Z

    iget-object v6, v0, La8/c;->f:Ljava/lang/String;

    iget-boolean v7, v0, La8/c;->g:Z

    iget-boolean v8, v0, La8/c;->h:Z

    iget-object v9, v0, La8/c;->i:Ljava/lang/String;

    iget-boolean v10, v0, La8/c;->j:Z

    iget-object v11, v0, La8/c;->k:Lc8/b;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lb8/c;-><init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLc8/b;)V

    new-instance p1, La8/n;

    invoke-direct {p1, p0}, La8/n;-><init>(Lb8/c;)V

    return-object p1
.end method
