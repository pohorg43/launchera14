.class public final Lc5/g0$b$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/g0$b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ld5/f<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/g0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/g0$b<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/g0$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/g0$b<",
            "+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/g0$b$a;->a:Lc5/g0$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lc5/g0$b$a;->a:Lc5/g0$b;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lc5/h0;->a(Lc5/g0$a;Z)Ld5/f;

    move-result-object p0

    return-object p0
.end method
