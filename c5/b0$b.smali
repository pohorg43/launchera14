.class public final Lc5/b0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/b0;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lc5/b0$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/b0;


# direct methods
.method public constructor <init>(Lc5/b0;)V
    .registers 2

    iput-object p1, p0, Lc5/b0$b;->a:Lc5/b0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lc5/b0$a;

    iget-object p0, p0, Lc5/b0$b;->a:Lc5/b0;

    invoke-direct {v0, p0}, Lc5/b0$a;-><init>(Lc5/b0;)V

    return-object v0
.end method
