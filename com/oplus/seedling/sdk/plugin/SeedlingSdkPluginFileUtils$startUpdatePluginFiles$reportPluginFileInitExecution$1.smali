.class final Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils$startUpdatePluginFiles$reportPluginFileInitExecution$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->startUpdatePluginFiles(Landroid/content/Context;Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils$startUpdatePluginFiles$reportPluginFileInitExecution$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils$startUpdatePluginFiles$reportPluginFileInitExecution$1;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils$startUpdatePluginFiles$reportPluginFileInitExecution$1;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils$startUpdatePluginFiles$reportPluginFileInitExecution$1;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils$startUpdatePluginFiles$reportPluginFileInitExecution$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils$startUpdatePluginFiles$reportPluginFileInitExecution$1;->invoke(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 2

    const-string p0, "errorMessage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportPluginFileInitExecution(Ljava/lang/String;)V

    return-void
.end method
