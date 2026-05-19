.class public final Lh5/h$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh5/h;-><init>(Lx6/m;Lh5/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh5/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh5/h;

.field public final synthetic b:Lx6/m;


# direct methods
.method public constructor <init>(Lh5/h;Lx6/m;)V
    .registers 3

    iput-object p1, p0, Lh5/h$c;->a:Lh5/h;

    iput-object p2, p0, Lh5/h$c;->b:Lx6/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lh5/l;

    iget-object v1, p0, Lh5/h$c;->a:Lh5/h;

    invoke-virtual {v1}, Lf5/g;->l()Ll5/a0;

    move-result-object v1

    const-string v2, "builtInsModule"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lh5/h$c;->b:Lx6/m;

    new-instance v3, Lh5/i;

    iget-object p0, p0, Lh5/h$c;->a:Lh5/h;

    invoke-direct {v3, p0}, Lh5/i;-><init>(Lh5/h;)V

    invoke-direct {v0, v1, v2, v3}, Lh5/l;-><init>(Li5/e0;Lx6/m;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
