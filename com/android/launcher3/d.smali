.class public final synthetic Lcom/android/launcher3/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/d;

.field public static final synthetic c:Lcom/android/launcher3/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d;->b:Lcom/android/launcher3/d;

    new-instance v0, Lcom/android/launcher3/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d;->c:Lcom/android/launcher3/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/d;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    new-instance p0, Lcom/android/launcher3/AppWidgetResizeFrameExtOplusImpl;

    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrameExtOplusImpl;-><init>()V

    return-object p0

    :goto_c
    new-instance p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;

    invoke-direct {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;-><init>()V

    return-object p0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
