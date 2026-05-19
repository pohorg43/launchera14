.class public final Lo7/o$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/o;->a(Lo7/q;Lkotlin/jvm/functions/Function0;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic a:Lm7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/l<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/l<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo7/o$b;->a:Lm7/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lo7/o$b;->a:Lm7/l;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    return-object p1
.end method
