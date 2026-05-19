.class public final Lv5/s;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly6/l0;",
        "Li5/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lv5/s;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv5/s;

    invoke-direct {v0}, Lv5/s;-><init>()V

    sput-object v0, Lv5/s;->a:Lv5/s;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ly6/l0;

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of p1, p0, Li5/e;

    if-eqz p1, :cond_11

    check-cast p0, Li5/e;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method
