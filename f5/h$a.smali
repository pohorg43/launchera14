.class public final Lf5/h$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh6/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf5/h;


# direct methods
.method public constructor <init>(Lf5/h;)V
    .registers 2

    iput-object p1, p0, Lf5/h$a;->a:Lf5/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lf5/j;->k:Lh6/c;

    iget-object p0, p0, Lf5/h$a;->a:Lf5/h;

    iget-object p0, p0, Lf5/h;->b:Lh6/f;

    invoke-virtual {v0, p0}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object p0

    const-string v0, "BUILT_INS_PACKAGE_FQ_NAME.child(arrayTypeName)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
