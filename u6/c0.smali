.class public final Lu6/c0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/c0$a;
    }
.end annotation


# static fields
.field public static final a:Lu6/c0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu6/c0;

    invoke-direct {v0}, Lu6/c0;-><init>()V

    sput-object v0, Lu6/c0;->a:Lu6/c0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc6/k;)Li5/d0;
    .registers 3

    sget-object p0, Li5/d0;->a:Li5/d0;

    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_e

    :cond_6
    sget-object v0, Lu6/c0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_e
    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    goto :goto_23

    :cond_1b
    sget-object p0, Li5/d0;->b:Li5/d0;

    goto :goto_23

    :cond_1e
    sget-object p0, Li5/d0;->d:Li5/d0;

    goto :goto_23

    :cond_21
    sget-object p0, Li5/d0;->c:Li5/d0;

    :cond_23
    :goto_23
    return-object p0
.end method
