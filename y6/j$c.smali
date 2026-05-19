.class public final Ly6/j$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/j;-><init>(Lx6/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/j$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/j;


# direct methods
.method public constructor <init>(Ly6/j;)V
    .registers 2

    iput-object p1, p0, Ly6/j$c;->a:Ly6/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ly6/j$b;

    iget-object p0, p0, Ly6/j$c;->a:Ly6/j;

    invoke-virtual {p0}, Ly6/j;->j()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ly6/j$b;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
