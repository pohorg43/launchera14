.class public final Lr7/w;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field public final synthetic c:Ll4/f;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ll4/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Object;",
            "Ll4/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lr7/w;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lr7/w;->b:Ljava/lang/Object;

    iput-object p3, p0, Lr7/w;->c:Ll4/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lr7/w;->a:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lr7/w;->b:Ljava/lang/Object;

    iget-object p0, p0, Lr7/w;->c:Ll4/f;

    invoke-static {p1, v0, p0}, Lr7/x;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ll4/f;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
