.class public abstract Ll4/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Ll4/f$a;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Ll4/f$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ll4/f$a;",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Ll4/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/f$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/f$b;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f$b<",
            "TB;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ll4/f$a;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll4/b;->a:Lkotlin/jvm/functions/Function1;

    instance-of p2, p1, Ll4/b;

    if-eqz p2, :cond_17

    check-cast p1, Ll4/b;

    iget-object p1, p1, Ll4/b;->b:Ll4/f$b;

    :cond_17
    iput-object p1, p0, Ll4/b;->b:Ll4/f$b;

    return-void
.end method
