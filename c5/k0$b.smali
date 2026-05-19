.class public final Lc5/k0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lz4/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/k0;


# direct methods
.method public constructor <init>(Lc5/k0;)V
    .registers 2

    iput-object p1, p0, Lc5/k0$b;->a:Lc5/k0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lc5/k0$b;->a:Lc5/k0;

    iget-object v0, p0, Lc5/k0;->a:Ly6/l0;

    invoke-virtual {p0, v0}, Lc5/k0;->b(Ly6/l0;)Lz4/f;

    move-result-object p0

    return-object p0
.end method
