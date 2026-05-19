.class final Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider$layoutDirectory$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider$layoutDirectory$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider$layoutDirectory$2;

    invoke-direct {v0}, Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider$layoutDirectory$2;-><init>()V

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider$layoutDirectory$2;->INSTANCE:Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider$layoutDirectory$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .registers 3

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getDefaultLayoutPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "appFeatureLayout "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComponentLayoutProvider"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider$layoutDirectory$2;->invoke()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
