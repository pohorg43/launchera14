.class public final Lr5/p;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/e1;",
        "Ly6/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr5/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr5/p;

    invoke-direct {v0}, Lr5/p;-><init>()V

    sput-object v0, Lr5/p;->a:Lr5/p;

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

    check-cast p1, Li5/e1;

    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    return-object p0
.end method
