.class public final Lk6/s$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6/s;->a(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TH;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li7/e<",
            "TH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li7/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li7/e<",
            "TH;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lk6/s$a;->a:Li7/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lk6/s$a;->a:Li7/e;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li7/e;->add(Ljava/lang/Object;)Z

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
