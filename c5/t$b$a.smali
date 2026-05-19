.class public final Lc5/t$b$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/t$b;-><init>(Lc5/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ln5/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/t;


# direct methods
.method public constructor <init>(Lc5/t;)V
    .registers 2

    iput-object p1, p0, Lc5/t$b$a;->a:Lc5/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lc5/t$b$a;->a:Lc5/t;

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lc5/o0;->a(Ljava/lang/Class;)Ln5/i;

    move-result-object p0

    return-object p0
.end method
