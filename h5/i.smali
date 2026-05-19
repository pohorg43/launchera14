.class public final Lh5/i;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh5/h$b;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmBuiltIns.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmBuiltIns.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$customizer$2$1\n+ 2 coreLib.kt\norg/jetbrains/kotlin/utils/CoreLibKt\n*L\n1#1,103:1\n19#2:104\n*S KotlinDebug\n*F\n+ 1 JvmBuiltIns.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$customizer$2$1\n*L\n80#1:104\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh5/h;


# direct methods
.method public constructor <init>(Lh5/h;)V
    .registers 2

    iput-object p1, p0, Lh5/i;->a:Lh5/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lh5/i;->a:Lh5/h;

    iget-object v0, v0, Lh5/h;->f:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lh5/i;->a:Lh5/h;

    check-cast v0, Lh5/h$b;

    const/4 v1, 0x0

    iput-object v1, p0, Lh5/h;->f:Lkotlin/jvm/functions/Function0;

    return-object v0

    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "JvmBuiltins instance has not been initialized properly"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
