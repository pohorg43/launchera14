.class public final synthetic Lcom/android/launcher3/icons/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/LauncherActivityInfo;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/icons/p;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/p;->b:Landroid/content/pm/LauncherActivityInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/icons/p;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/icons/p;->b:Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->h(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0

    :goto_d
    iget-object p0, p0, Lcom/android/launcher3/icons/p;->b:Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->c(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
