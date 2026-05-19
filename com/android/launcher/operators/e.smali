.class public final synthetic Lcom/android/launcher/operators/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/android/launcher/operators/GeneralCustomizer$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/operators/GeneralCustomizer$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/operators/e;->a:Lcom/android/launcher/operators/GeneralCustomizer$1;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/operators/e;->a:Lcom/android/launcher/operators/GeneralCustomizer$1;

    invoke-static {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer$1;->l(Lcom/android/launcher/operators/GeneralCustomizer$1;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
