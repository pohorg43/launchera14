.class public final Lc5/o$a$n;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/o$a;-><init>(Lc5/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/o<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/o;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/o<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/o$a$n;->a:Lc5/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lc5/o$a$n;->a:Lc5/o;

    iget-object v0, v0, Lc5/o;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    goto :goto_1f

    :cond_c
    iget-object p0, p0, Lc5/o$a$n;->a:Lc5/o;

    invoke-virtual {p0}, Lc5/o;->r()Lh6/b;

    move-result-object p0

    iget-boolean v0, p0, Lh6/b;->c:Z

    if-eqz v0, :cond_17

    goto :goto_1f

    :cond_17
    invoke-virtual {p0}, Lh6/b;->b()Lh6/c;

    move-result-object p0

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1f
    return-object v1
.end method
