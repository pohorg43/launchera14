.class public final Lh5/j;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh5/h$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/e0;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Li5/e0;Z)V
    .registers 3

    iput-object p1, p0, Lh5/j;->a:Li5/e0;

    iput-boolean p2, p0, Lh5/j;->b:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lh5/h$b;

    iget-object v1, p0, Lh5/j;->a:Li5/e0;

    iget-boolean p0, p0, Lh5/j;->b:Z

    invoke-direct {v0, v1, p0}, Lh5/h$b;-><init>(Li5/e0;Z)V

    return-object v0
.end method
