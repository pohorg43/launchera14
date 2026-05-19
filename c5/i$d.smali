.class public final Lc5/i$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lc5/k0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/i<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/i<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/i$d;->a:Lc5/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    new-instance v0, Lc5/k0;

    iget-object v1, p0, Lc5/i$d;->a:Lc5/i;

    invoke-virtual {v1}, Lc5/i;->i()Li5/b;

    move-result-object v1

    invoke-interface {v1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lc5/n;

    iget-object p0, p0, Lc5/i$d;->a:Lc5/i;

    invoke-direct {v2, p0}, Lc5/n;-><init>(Lc5/i;)V

    invoke-direct {v0, v1, v2}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
