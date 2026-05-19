.class public final Lp7/n;
.super Lp7/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp7/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lp7/e<",
            "-TT;>;-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lp7/a;-><init>()V

    iput-object p1, p0, Lp7/n;->a:Lkotlin/jvm/functions/Function2;

    return-void
.end method
