.class public final Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBubbleXmlHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BubbleXmlHelper.kt\ncom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1849#2,2:158\n1#3:160\n*S KotlinDebug\n*F\n+ 1 BubbleXmlHelper.kt\ncom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt\n*L\n63#1:158,2\n*E\n"
    }
.end annotation


# static fields
.field private static final ATTR_DESIRED_HEIGHT:Ljava/lang/String; = "h"

.field private static final ATTR_DESIRED_HEIGHT_RES_ID:Ljava/lang/String; = "hid"

.field private static final ATTR_DISMISSABLE:Ljava/lang/String; = "d"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LOCUS:Ljava/lang/String; = "l"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final ATTR_SHORTCUT_ID:Ljava/lang/String; = "sid"

.field private static final ATTR_TASK_ID:Ljava/lang/String; = "tid"

.field private static final ATTR_TITLE:Ljava/lang/String; = "t"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "v"

.field private static final CURRENT_VERSION:I = 0x2

.field private static final TAG_BUBBLE:Ljava/lang/String; = "bb"

.field private static final TAG_BUBBLES:Ljava/lang/String; = "bs"


# direct methods
.method private static final getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final readXml(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string/jumbo v2, "newPullParser()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string p0, "bs"

    invoke-static {v1, p0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    const-string/jumbo v2, "v"

    invoke-static {v1, v2}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_77

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3b

    goto :goto_a4

    :cond_3b
    :goto_3b
    invoke-static {v1, p0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_a4

    const-string/jumbo v2, "uid"

    invoke-static {v1, v2}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4b

    goto :goto_3b

    :cond_4b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_54
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->readXmlEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    move-result-object v5

    if-nez v5, :cond_61

    goto :goto_54

    :cond_61
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_65
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v4}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3b

    :cond_77
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_80
    :goto_80
    invoke-static {v1, p0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->readXmlEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    move-result-object v3

    if-eqz v3, :cond_80

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v4

    if-nez v4, :cond_80

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_96
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a4

    const/4 p0, 0x0

    invoke-static {v2}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a4
    :goto_a4
    return-object v0
.end method

.method private static final readXmlEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/wm/shell/bubbles/storage/BubbleEntity;
    .registers 14

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_b
    new-instance v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    const-string/jumbo v1, "uid"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_81

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "pkg"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    return-object v2

    :cond_25
    const-string/jumbo v1, "sid"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2f

    return-object v2

    :cond_2f
    const-string v1, "key"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_38

    return-object v2

    :cond_38
    const-string v1, "h"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_81

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "hid"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_81

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v1, "t"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "tid"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    :cond_65
    const/4 v1, -0x1

    :goto_66
    move v10, v1

    const-string v1, "l"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "d"

    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7a

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_7b

    :cond_7a
    const/4 p0, 0x0

    :goto_7b
    move v12, p0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    return-object v0

    :cond_81
    return-object v2
.end method

.method public static final writeXml(Ljava/io/OutputStream;Landroid/util/SparseArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bubbles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p0, "bs"

    invoke-interface {v0, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "v"

    const-string v3, "2"

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v3, :cond_67

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v0, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "uid"

    invoke-interface {v0, v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-static {v0, v6}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->writeXmlEntry(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)V

    goto :goto_51

    :cond_61
    invoke-interface {v0, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_67
    invoke-interface {v0, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method

.method private static final writeXmlEntry(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)V
    .registers 6

    const-string v0, "bb"

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "uid"

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "pkg"

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "sid"

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "key"

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "h"

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getDesiredHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "hid"

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getDesiredHeightResId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    const-string/jumbo v3, "t"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_57
    const-string/jumbo v2, "tid"

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getTaskId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getLocus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_70

    const-string v3, "l"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_70
    const-string v2, "d"

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_80} :catch_81

    return-void

    :catch_81
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
