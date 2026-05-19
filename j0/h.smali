.class public final synthetic Lj0/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic b:Lj0/h;

.field public static final synthetic c:Lj0/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lj0/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj0/h;-><init>(I)V

    sput-object v0, Lj0/h;->b:Lj0/h;

    new-instance v0, Lj0/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj0/h;-><init>(I)V

    sput-object v0, Lj0/h;->c:Lj0/h;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lj0/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    iget p0, p0, Lj0/h;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    new-instance p0, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtFoldScreenImpl;-><init>()V

    return-object p0

    :goto_c
    new-instance p0, Lcom/android/quickstep/views/TaskThumbnailViewExtOplusImpl;

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailViewExtOplusImpl;-><init>()V

    return-object p0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
