.class public final Lc5/y$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/y;-><init>(Lc5/t;Li5/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lc5/y$a<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/y<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/y;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/y<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/y$b;->a:Lc5/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lc5/y$a;

    iget-object p0, p0, Lc5/y$b;->a:Lc5/y;

    invoke-direct {v0, p0}, Lc5/y$a;-><init>(Lc5/y;)V

    return-object v0
.end method
