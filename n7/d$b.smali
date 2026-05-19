.class public final Ln7/d$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/d;->m(JLm7/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln7/d;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ln7/d;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Ln7/d$b;->a:Ln7/d;

    iput-object p2, p0, Ln7/d$b;->b:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Ln7/d$b;->a:Ln7/d;

    iget-object p1, p1, Ln7/d;->a:Landroid/os/Handler;

    iget-object p0, p0, Ln7/d$b;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
