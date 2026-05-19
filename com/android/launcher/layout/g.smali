.class public final synthetic Lcom/android/launcher/layout/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/layout/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/g;->b:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/layout/g;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/layout/g;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :goto_d
    iget-object p0, p0, Lcom/android/launcher/layout/g;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider;->a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
