.class public final Lr6/h;
.super Lr6/a;
.source ""


# instance fields
.field public final b:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Lr6/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/m;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lr6/i;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lr6/a;-><init>()V

    new-instance v0, Lr6/h$a;

    invoke-direct {v0, p2}, Lr6/h$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p1, v0}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lr6/h;->b:Lx6/i;

    return-void
.end method


# virtual methods
.method public i()Lr6/i;
    .registers 1

    iget-object p0, p0, Lr6/h;->b:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/i;

    return-object p0
.end method
