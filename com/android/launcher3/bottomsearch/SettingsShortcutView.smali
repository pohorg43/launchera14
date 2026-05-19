.class public final Lcom/android/launcher3/bottomsearch/SettingsShortcutView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/bottomsearch/SettingsShortcutView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/bottomsearch/SettingsShortcutView$Companion;

.field private static final KEY_LAUNCH_FROM_DOCK:Ljava/lang/String; = "launch_from_dock"

.field private static final TAG:Ljava/lang/String; = "SettingsShortcutView"


# instance fields
.field private iconIV:Landroid/widget/ImageView;

.field private titleTV:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/bottomsearch/SettingsShortcutView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/bottomsearch/SettingsShortcutView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;->Companion:Lcom/android/launcher3/bottomsearch/SettingsShortcutView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/bottomsearch/DynamicMenuBean;Lcom/android/launcher3/bottomsearch/SettingsShortcutView;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;->applyInfo$lambda$5(Lcom/android/launcher/bottomsearch/DynamicMenuBean;Lcom/android/launcher3/bottomsearch/SettingsShortcutView;Landroid/view/View;)V

    return-void
.end method

.method private static final applyInfo$lambda$5(Lcom/android/launcher/bottomsearch/DynamicMenuBean;Lcom/android/launcher3/bottomsearch/SettingsShortcutView;Landroid/view/View;)V
    .registers 6

    const-string p2, "$bean"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/bottomsearch/DynamicMenuBean;->getLink()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_1c

    :cond_1a
    move p2, v0

    goto :goto_1d

    :cond_1c
    :goto_1c
    move p2, v1

    :goto_1d
    if-eqz p2, :cond_2d

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    iget-object p2, p1, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_3f

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher/bottomsearch/DynamicMenuBean;->getLink()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "com.heytap.browser"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_3f
    if-eqz p0, :cond_46

    const-string p2, "launch_from_dock"

    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_46
    :try_start_46
    iget-object p2, p1, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_53

    :catchall_4e
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_53
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7e

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1200b5

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startActivitySafely:Unable to launch. ActivityNotFoundException intent= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsShortcutView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    return-void
.end method


# virtual methods
.method public final applyInfo(Lcom/android/launcher/bottomsearch/DynamicMenuBean;)V
    .registers 6

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;->titleTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/DynamicMenuBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "sans-serif-medium"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;->iconIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/DynamicMenuBean;->getIcon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    if-eqz v1, :cond_35

    const v1, 0x7f0806be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6f

    :cond_35
    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/DynamicMenuBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_3d
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mContext.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;->decodeFixedBitmap(Ljava/io/FileDescriptor;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_62} :catch_63

    goto :goto_6f

    :catch_63
    move-exception v0

    const-string v1, "e: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SettingsShortcutView"

    invoke-static {v0, v1, v2}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    new-instance v0, Lcom/android/launcher/folder/recommend/view/b;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lcom/android/launcher/bottomsearch/DynamicMenuBean;Lcom/android/launcher3/bottomsearch/SettingsShortcutView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final decodeFixedBitmap(Ljava/io/FileDescriptor;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const-string/jumbo p0, "resources"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f070711

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v0, :cond_27

    move v0, v1

    :cond_27
    if-nez p0, :cond_2a

    move p0, v1

    :cond_2a
    int-to-float v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v0, v4

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v1, v0}, Ly4/h;->b(FF)F

    move-result p0

    invoke-static {p0}, Lu4/a;->b(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a062f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;->titleTV:Landroid/widget/TextView;

    const v0, 0x7f0a032f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;->iconIV:Landroid/widget/ImageView;

    return-void
.end method
