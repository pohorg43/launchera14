.class public final synthetic Lcom/android/launcher3/uioverrides/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

.field public final synthetic b:Lcom/android/launcher3/util/SafeCloseable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/util/SafeCloseable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/a;->a:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/a;->b:Lcom/android/launcher3/util/SafeCloseable;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/a;->a:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/a;->b:Lcom/android/launcher3/util/SafeCloseable;

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->e(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/util/SafeCloseable;)V

    return-void
.end method
