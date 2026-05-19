.class public final Lj5/j$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/j;-><init>(Lf5/g;Lh6/c;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj5/j;


# direct methods
.method public constructor <init>(Lj5/j;)V
    .registers 2

    iput-object p1, p0, Lj5/j$a;->a:Lj5/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lj5/j$a;->a:Lj5/j;

    iget-object v0, p0, Lj5/j;->a:Lf5/g;

    iget-object p0, p0, Lj5/j;->b:Lh6/c;

    invoke-virtual {v0, p0}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    return-object p0
.end method
