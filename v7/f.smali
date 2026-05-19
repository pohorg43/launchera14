.class public final Lv7/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lr7/f0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr7/f0;

    const-string v1, "NO_OWNER"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv7/f;->a:Lr7/f0;

    return-void
.end method

.method public static a(ZI)Lv7/a;
    .registers 2

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :cond_5
    new-instance p1, Lv7/d;

    invoke-direct {p1, p0}, Lv7/d;-><init>(Z)V

    return-object p1
.end method
