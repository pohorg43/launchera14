.class public final Lc5/a0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/a0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lc5/a0$a<",
        "TD;TE;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/a0<",
            "TD;TE;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/a0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/a0<",
            "TD;TE;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/a0$b;->a:Lc5/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lc5/a0$a;

    iget-object p0, p0, Lc5/a0$b;->a:Lc5/a0;

    invoke-direct {v0, p0}, Lc5/a0$a;-><init>(Lc5/a0;)V

    return-object v0
.end method
