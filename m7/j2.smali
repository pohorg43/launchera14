.class public Lm7/j2;
.super Lm7/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/a<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll4/f;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lm7/a;-><init>(Ll4/f;ZZ)V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/Throwable;)Z
    .registers 2

    iget-object p0, p0, Lm7/a;->c:Ll4/f;

    invoke-static {p0, p1}, Lm7/h0;->a(Ll4/f;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
