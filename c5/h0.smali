.class public final Lc5/h0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKPropertyImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KPropertyImpl.kt\nkotlin/reflect/jvm/internal/KPropertyImplKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lc5/g0$a;Z)Ld5/f;
    .registers 7

    sget-object v0, Lc5/t;->a:Lc5/t$a;

    sget-object v0, Lc5/t;->b:Lk7/f;

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v1

    iget-object v1, v1, Lc5/g0;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lk7/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p0, Ld5/l;->a:Ld5/l;

    goto/16 :goto_1eb

    :cond_14
    sget-object v0, Lc5/t0;->a:Lc5/t0;

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v0

    invoke-virtual {v0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-static {v0}, Lc5/t0;->c(Li5/o0;)Lc5/h;

    move-result-object v0

    instance-of v1, v0, Lc5/h$c;

    if-eqz v1, :cond_159

    check-cast v0, Lc5/h$c;

    iget-object v1, v0, Lc5/h$c;->c:Lf6/a$d;

    const/4 v2, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {v1}, Lf6/a$d;->e()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v1, v1, Lf6/a$d;->e:Lf6/a$c;

    goto :goto_40

    :cond_36
    invoke-virtual {v1}, Lf6/a$d;->f()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v1, v1, Lf6/a$d;->f:Lf6/a$c;

    goto :goto_40

    :cond_3f
    move-object v1, v2

    :goto_40
    if-eqz v1, :cond_5c

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v2

    iget-object v2, v2, Lc5/g0;->f:Lc5/t;

    iget-object v3, v0, Lc5/h$c;->d:Le6/c;

    iget v4, v1, Lf6/a$c;->c:I

    invoke-interface {v3, v4}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lc5/h$c;->d:Le6/c;

    iget v1, v1, Lf6/a$c;->d:I

    invoke-interface {v0, v1}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lc5/t;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    :cond_5c
    if-nez v2, :cond_fb

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v0

    invoke-virtual {v0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-static {v0}, Lk6/k;->d(Li5/f1;)Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v0

    invoke-virtual {v0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v0

    sget-object v1, Li5/s;->d:Li5/t;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p1

    invoke-virtual {p1}, Lc5/g0;->n()Li5/o0;

    move-result-object p1

    invoke-interface {p1}, Li5/d1;->b()Li5/l;

    move-result-object p1

    invoke-static {p1}, Ld5/j;->e(Li5/l;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_b8

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v0

    invoke-virtual {v0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-static {p1, v0}, Ld5/j;->d(Ljava/lang/Class;Li5/b;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_b8

    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result v0

    if-eqz v0, :cond_b1

    new-instance v0, Ld5/k$a;

    invoke-static {p0}, Lc5/h0;->d(Lc5/g0$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ld5/k$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto/16 :goto_18c

    :cond_b1
    new-instance v0, Ld5/k$b;

    invoke-direct {v0, p1}, Ld5/k$b;-><init>(Ljava/lang/reflect/Method;)V

    goto/16 :goto_18c

    :cond_b8
    new-instance p1, Lc5/n0;

    const-string v0, "Underlying property of inline class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should have a field"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d4
    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v0

    invoke-virtual {v0}, Lc5/g0;->p()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_e4

    invoke-static {p0, p1, v0}, Lc5/h0;->b(Lc5/g0$a;ZLjava/lang/reflect/Field;)Ld5/g;

    move-result-object v0

    goto/16 :goto_18c

    :cond_e4
    new-instance p1, Lc5/n0;

    const-string v0, "No accessors or field is found for property "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fb
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_11d

    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result p1

    if-eqz p1, :cond_115

    new-instance p1, Ld5/g$g$a;

    invoke-static {p0}, Lc5/h0;->d(Lc5/g0$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Ld5/g$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_11a

    :cond_115
    new-instance p1, Ld5/g$g$d;

    invoke-direct {p1, v2}, Ld5/g$g$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_11a
    move-object v0, p1

    goto/16 :goto_18c

    :cond_11d
    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p1

    invoke-virtual {p1}, Lc5/g0;->n()Li5/o0;

    move-result-object p1

    invoke-interface {p1}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object p1

    sget-object v0, Lc5/w0;->a:Lh6/c;

    invoke-interface {p1, v0}, Lj5/h;->g(Lh6/c;)Z

    move-result p1

    if-eqz p1, :cond_143

    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result p1

    if-eqz p1, :cond_13d

    new-instance p1, Ld5/g$g$b;

    invoke-direct {p1, v2}, Ld5/g$g$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_11a

    :cond_13d
    new-instance p1, Ld5/g$g$e;

    invoke-direct {p1, v2}, Ld5/g$g$e;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_11a

    :cond_143
    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result p1

    if-eqz p1, :cond_153

    new-instance p1, Ld5/g$g$c;

    invoke-static {p0}, Lc5/h0;->d(Lc5/g0$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Ld5/g$g$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_11a

    :cond_153
    new-instance p1, Ld5/g$g$f;

    invoke-direct {p1, v2}, Ld5/g$g$f;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_11a

    :cond_159
    instance-of v1, v0, Lc5/h$a;

    if-eqz v1, :cond_166

    check-cast v0, Lc5/h$a;

    iget-object v0, v0, Lc5/h$a;->a:Ljava/lang/reflect/Field;

    invoke-static {p0, p1, v0}, Lc5/h0;->b(Lc5/g0$a;ZLjava/lang/reflect/Field;)Ld5/g;

    move-result-object v0

    goto :goto_18c

    :cond_166
    instance-of v1, v0, Lc5/h$b;

    if-eqz v1, :cond_1ab

    if-eqz p1, :cond_171

    check-cast v0, Lc5/h$b;

    iget-object p1, v0, Lc5/h$b;->a:Ljava/lang/reflect/Method;

    goto :goto_177

    :cond_171
    check-cast v0, Lc5/h$b;

    iget-object p1, v0, Lc5/h$b;->b:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_196

    :goto_177
    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result v0

    if-eqz v0, :cond_187

    new-instance v0, Ld5/g$g$a;

    invoke-static {p0}, Lc5/h0;->d(Lc5/g0$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ld5/g$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_18c

    :cond_187
    new-instance v0, Ld5/g$g$d;

    invoke-direct {v0, p1}, Ld5/g$g$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_18c
    invoke-virtual {p0}, Lc5/g0$a;->l()Li5/n0;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Ld5/j;->b(Ld5/f;Li5/b;Z)Ld5/f;

    move-result-object p0

    goto :goto_1eb

    :cond_196
    new-instance p0, Lc5/n0;

    const-string p1, "No source found for setter of Java method property: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lc5/h$b;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1ab
    instance-of v1, v0, Lc5/h$d;

    if-eqz v1, :cond_21a

    if-eqz p1, :cond_1b6

    check-cast v0, Lc5/h$d;

    iget-object p1, v0, Lc5/h$d;->a:Lc5/g$e;

    goto :goto_1bc

    :cond_1b6
    check-cast v0, Lc5/h$d;

    iget-object p1, v0, Lc5/h$d;->b:Lc5/g$e;

    if-eqz p1, :cond_203

    :goto_1bc
    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v0

    iget-object v0, v0, Lc5/g0;->f:Lc5/t;

    iget-object p1, p1, Lc5/g$e;->a:Lg6/d$b;

    iget-object v1, p1, Lg6/d$b;->a:Ljava/lang/String;

    iget-object p1, p1, Lg6/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lc5/t;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1ec

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result v0

    if-eqz v0, :cond_1e6

    new-instance v0, Ld5/g$g$a;

    invoke-static {p0}, Lc5/h0;->d(Lc5/g0$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ld5/g$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1eb

    :cond_1e6
    new-instance p0, Ld5/g$g$d;

    invoke-direct {p0, p1}, Ld5/g$g$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_1eb
    return-object p0

    :cond_1ec
    new-instance p1, Lc5/n0;

    const-string v0, "No accessor found for property "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_203
    new-instance p1, Lc5/n0;

    const-string v0, "No setter found for property "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21a
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method

.method public static final b(Lc5/g0$a;ZLjava/lang/reflect/Field;)Ld5/g;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/g0$a<",
            "**>;Z",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ld5/g<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v0

    invoke-virtual {v0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-interface {v0}, Li5/d1;->b()Li5/l;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lk6/i;->p(Li5/l;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_3a

    :cond_18
    invoke-interface {v1}, Li5/l;->b()Li5/l;

    move-result-object v1

    sget-object v2, Li5/f;->b:Li5/f;

    invoke-static {v1, v2}, Lk6/i;->s(Li5/l;Li5/f;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2b

    invoke-static {v1}, Lk6/i;->m(Li5/l;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :cond_2b
    instance-of v1, v0, Lw6/m;

    if-eqz v1, :cond_3a

    check-cast v0, Lw6/m;

    iget-object v0, v0, Lw6/m;->C:Lc6/n;

    invoke-static {v0}, Lg6/h;->d(Lc6/n;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v3, 0x0

    :cond_3b
    :goto_3b
    if-nez v3, :cond_9d

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_9d

    :cond_48
    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v0

    invoke-virtual {v0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-interface {v0}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v0

    sget-object v1, Lc5/w0;->a:Lh6/c;

    invoke-interface {v0, v1}, Lj5/h;->g(Lh6/c;)Z

    move-result v0

    if-eqz v0, :cond_8b

    if-eqz p1, :cond_71

    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result p0

    if-eqz p0, :cond_6b

    new-instance p0, Ld5/g$e$b;

    invoke-direct {p0, p2}, Ld5/g$e$b;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_d3

    :cond_6b
    new-instance p0, Ld5/g$e$d;

    invoke-direct {p0, p2}, Ld5/g$e$d;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_d3

    :cond_71
    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result p1

    if-eqz p1, :cond_81

    new-instance p1, Ld5/g$f$b;

    invoke-static {p0}, Lc5/h0;->c(Lc5/g0$a;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Ld5/g$f$b;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_d2

    :cond_81
    new-instance p1, Ld5/g$f$d;

    invoke-static {p0}, Lc5/h0;->c(Lc5/g0$a;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Ld5/g$f$d;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_d2

    :cond_8b
    if-eqz p1, :cond_93

    new-instance p0, Ld5/g$e$e;

    invoke-direct {p0, p2}, Ld5/g$e$e;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_d3

    :cond_93
    new-instance p1, Ld5/g$f$e;

    invoke-static {p0}, Lc5/h0;->c(Lc5/g0$a;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Ld5/g$f$e;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_d2

    :cond_9d
    :goto_9d
    if-eqz p1, :cond_b5

    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result p1

    if-eqz p1, :cond_af

    new-instance p1, Ld5/g$e$a;

    invoke-static {p0}, Lc5/h0;->d(Lc5/g0$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ld5/g$e$a;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_d2

    :cond_af
    new-instance p0, Ld5/g$e$c;

    invoke-direct {p0, p2}, Ld5/g$e$c;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_d3

    :cond_b5
    invoke-virtual {p0}, Lc5/g0$a;->k()Z

    move-result p1

    if-eqz p1, :cond_c9

    new-instance p1, Ld5/g$f$a;

    invoke-static {p0}, Lc5/h0;->c(Lc5/g0$a;)Z

    move-result v0

    invoke-static {p0}, Lc5/h0;->d(Lc5/g0$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Ld5/g$f$a;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    goto :goto_d2

    :cond_c9
    new-instance p1, Ld5/g$f$c;

    invoke-static {p0}, Lc5/h0;->c(Lc5/g0$a;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Ld5/g$f$c;-><init>(Ljava/lang/reflect/Field;Z)V

    :goto_d2
    move-object p0, p1

    :goto_d3
    return-object p0
.end method

.method public static final c(Lc5/g0$a;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/g0$a<",
            "**>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object p0

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    invoke-static {p0}, Ly6/a2;->g(Ly6/l0;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final d(Lc5/g0$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/g0$a<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    iget-object v0, p0, Lc5/g0;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object p0

    invoke-static {v0, p0}, Ld5/j;->a(Ljava/lang/Object;Li5/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
