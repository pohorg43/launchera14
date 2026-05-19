.class public final Lu7/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu7/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu7/d<",
        "TQ;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Lu7/h<",
            "*>;",
            "Ljava/lang/Object;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lu7/h<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "-",
            "Lu7/h<",
            "*>;",
            "Ljava/lang/Object;",
            "Lh4/z;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lu7/h<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu7/e;->a:Ljava/lang/Object;

    iput-object p2, p0, Lu7/e;->b:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lu7/e;->c:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lu7/e;->d:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public a()Lkotlin/jvm/functions/Function3;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Lu7/h<",
            "*>;",
            "Ljava/lang/Object;",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lu7/e;->b:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public b()Lkotlin/jvm/functions/Function3;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lu7/h<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lu7/e;->d:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public c()Lkotlin/jvm/functions/Function3;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lu7/e;->c:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public d()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lu7/e;->a:Ljava/lang/Object;

    return-object p0
.end method
