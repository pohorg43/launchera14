.class public final La8/n;
.super La8/a;
.source ""


# direct methods
.method public constructor <init>(Lb8/c;)V
    .registers 4

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La8/a;-><init>(Lb8/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p1, Lb8/c;->k:Lc8/b;

    sget-object v0, Lc8/d;->a:Lc8/b;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_22

    :cond_14
    new-instance p0, Lb8/m;

    iget-boolean v0, p1, Lb8/c;->h:Z

    iget-object v1, p1, Lb8/c;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lb8/m;-><init>(ZLjava/lang/String;)V

    iget-object p1, p1, Lb8/c;->k:Lc8/b;

    invoke-virtual {p1, p0}, Lc8/b;->a(Lc8/c;)V

    :goto_22
    return-void
.end method
