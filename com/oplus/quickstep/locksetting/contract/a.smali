.class public final synthetic Lcom/oplus/quickstep/locksetting/contract/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

.field public final synthetic b:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

.field public final synthetic c:Landroid/graphics/drawable/Drawable;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/a;->a:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/contract/a;->b:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

    iput-object p3, p0, Lcom/oplus/quickstep/locksetting/contract/a;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/oplus/quickstep/locksetting/contract/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/a;->a:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/a;->b:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/a;->c:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->g(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method
