.class public final Lq7/n;
.super Lr7/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr7/b0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll4/f;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "Ll4/d<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lr7/b0;-><init>(Ll4/f;Ll4/d;)V

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/Throwable;)Z
    .registers 3

    instance-of v0, p1, Lq7/l;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-virtual {p0, p1}, Lm7/x1;->F(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
