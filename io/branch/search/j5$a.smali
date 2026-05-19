.class public final Lio/branch/search/j5$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/j5;-><init>(Lm7/j0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp7/d<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp7/d;


# direct methods
.method public constructor <init>(Lp7/d;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/j5$a;->a:Lp7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lio/branch/search/j5$a;->a:Lp7/d;

    new-instance v1, Lio/branch/search/j5$a$a;

    invoke-direct {v1, p1, p0}, Lio/branch/search/j5$a$a;-><init>(Lp7/e;Lio/branch/search/j5$a;)V

    invoke-interface {v0, v1, p2}, Lp7/d;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_10

    return-object p0

    :cond_10
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
