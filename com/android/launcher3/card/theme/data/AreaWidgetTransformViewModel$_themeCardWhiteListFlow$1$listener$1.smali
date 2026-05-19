.class public final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$listener$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $$this$callbackFlow:Lo7/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/q<",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lo7/q;Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;",
            "Lo7/q<",
            "-",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$listener$1;->this$0:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$listener$1;->$$this$callbackFlow:Lo7/q;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    const-string/jumbo p1, "uri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$listener$1;->this$0:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->getWhiteList()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$listener$1;->$$this$callbackFlow:Lo7/q;

    invoke-interface {p0, p1}, Lo7/t;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lo7/j$b;

    xor-int/lit8 p0, p0, 0x1

    const-string p2, "AreaWidgetTransformViewModel"

    if-nez p0, :cond_20

    const-string p0, "ThemeCardWhiteList update failed"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ThemeCardWhiteList changed:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method
