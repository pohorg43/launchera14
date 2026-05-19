.class public final Lcom/android/launcher3/widget/WidgetSections;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    }
.end annotation


# static fields
.field public static final NO_CATEGORY:I = -0x1

.field private static final TAG_SECTION_NAME:Ljava/lang/String; = "section"

.field private static final TAG_WIDGET_NAME:Ljava/lang/String; = "widget"

.field private static sWidgetSections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/WidgetSections$WidgetSection;",
            ">;"
        }
    .end annotation
.end field

.field private static sWidgetsToCategories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/util/IntSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getWidgetSections(Landroid/content/Context;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/WidgetSections$WidgetSection;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/launcher3/widget/WidgetSections;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/launcher3/widget/WidgetSections;->sWidgetSections:Landroid/util/SparseArray;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetSections;->parseWidgetSectionsXml(Landroid/content/Context;)V

    sget-object p0, Lcom/android/launcher3/widget/WidgetSections;->sWidgetSections:Landroid/util/SparseArray;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getWidgetsToCategory(Landroid/content/Context;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/util/IntSet;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/launcher3/widget/WidgetSections;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/launcher3/widget/WidgetSections;->sWidgetsToCategories:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetSections;->parseWidgetSectionsXml(Landroid/content/Context;)V

    sget-object p0, Lcom/android/launcher3/widget/WidgetSections;->sWidgetsToCategories:Ljava/util/Map;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized parseWidgetSectionsXml(Landroid/content/Context;)V
    .registers 14

    const-class v0, Lcom/android/launcher3/widget/WidgetSections;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_c2

    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f15002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_18} :catch_bb
    .catchall {:try_start_d .. :try_end_18} :catchall_c2

    :try_start_18
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_29

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_a6

    :cond_29
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a6

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1c

    const-string/jumbo v5, "section"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    new-instance v9, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;

    invoke-direct {v9, p0, v5}, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    :cond_49
    :goto_49
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-ne v10, v6, :cond_55

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v5, :cond_9f

    :cond_55
    if-eq v10, v7, :cond_9f

    if-ne v10, v8, :cond_49

    const-string/jumbo v10, "widget"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    sget-object v11, Lcom/android/launcher3/R$styleable;->WidgetSections:[I

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8a

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/util/IntSet;

    goto :goto_93

    :cond_8a
    new-instance v12, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v12}, Lcom/android/launcher3/util/IntSet;-><init>()V

    invoke-virtual {v2, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v12

    :goto_93
    if-eqz v10, :cond_99

    const/4 v10, -0x1

    invoke-virtual {v11, v10}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_99
    iget v10, v9, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mCategory:I

    invoke-virtual {v11, v10}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_49

    :cond_9f
    iget v5, v9, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mCategory:I

    invoke-virtual {v1, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1c

    :cond_a6
    sput-object v1, Lcom/android/launcher3/widget/WidgetSections;->sWidgetSections:Landroid/util/SparseArray;

    sput-object v2, Lcom/android/launcher3/widget/WidgetSections;->sWidgetsToCategories:Ljava/util/Map;
    :try_end_aa
    .catchall {:try_start_18 .. :try_end_aa} :catchall_af

    :try_start_aa
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_ad} :catch_bb
    .catchall {:try_start_aa .. :try_end_ad} :catchall_c2

    monitor-exit v0

    return-void

    :catchall_af
    move-exception p0

    if-eqz v3, :cond_ba

    :try_start_b2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    goto :goto_ba

    :catchall_b6
    move-exception v1

    :try_start_b7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ba
    :goto_ba
    throw p0
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bb} :catch_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_bb} :catch_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_c2

    :catch_bb
    move-exception p0

    :try_start_bc
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_c2

    :catchall_c2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
