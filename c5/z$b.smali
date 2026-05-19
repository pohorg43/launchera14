.class public final Lc5/z$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/z;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lc5/z$a<",
        "TT;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/z<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/z;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/z<",
            "TT;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/z$b;->a:Lc5/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lc5/z$a;

    iget-object p0, p0, Lc5/z$b;->a:Lc5/z;

    invoke-direct {v0, p0}, Lc5/z$a;-><init>(Lc5/z;)V

    return-object v0
.end method
