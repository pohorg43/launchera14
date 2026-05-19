.class public final Lf5/d;
.super Lf5/g;
.source ""


# static fields
.field public static final f:Lf5/d;

.field public static final g:Lf5/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lf5/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf5/d;-><init>(ZI)V

    sput-object v0, Lf5/d;->g:Lf5/d;

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_5

    move p1, v0

    :cond_5
    new-instance p2, Lx6/e;

    const-string v0, "DefaultBuiltIns"

    invoke-direct {p2, v0}, Lx6/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lf5/g;-><init>(Lx6/m;)V

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lf5/g;->d(Z)V

    :cond_15
    return-void
.end method
