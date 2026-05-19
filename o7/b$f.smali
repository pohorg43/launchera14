.class public final Lo7/b$f;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/b;-><init>(ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lu7/h<",
        "*>;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Ljava/lang/Throwable;",
        "+",
        "Lh4/z;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lo7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo7/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/b<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo7/b$f;->a:Lo7/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lu7/h;

    new-instance p2, Lo7/c;

    iget-object p0, p0, Lo7/b$f;->a:Lo7/b;

    invoke-direct {p2, p3, p0, p1}, Lo7/c;-><init>(Ljava/lang/Object;Lo7/b;Lu7/h;)V

    return-object p2
.end method
