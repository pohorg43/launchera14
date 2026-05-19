.class public Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;
.super Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UriShortcutParser"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V

    return-void
.end method

.method private parseAndAddDeepShortcut(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 13

    const-string v0, " and package name = "

    const-string v1, "Unable to pin the shortcut for shortcut id = "

    const-string v2, "DefaultLayoutParser"

    const/4 v3, -0x1

    :try_start_7
    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    const-class v5, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_9c

    :try_start_13
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, p2, v5, v6}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_9c

    goto :goto_68

    :catch_1f
    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pin shortcut error. for shortcut id ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "and package name ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-eqz v4, :cond_83

    sget-object v4, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_83

    const-string v4, "Running in sub user, try pin shortcut later"

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v4}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->addRepinShortcutLaterWhenParseXml(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_68
    invoke-static {p1, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "restored"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4, v7, p3}, Lcom/android/launcher3/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;ILorg/xmlpull/v1/XmlPullParser;)I

    move-result p0

    return p0

    :cond_83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_9b} :catch_9c

    return v3

    :catch_9c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 5

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shortcutId"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-direct {p0, v1, v0, p1}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->parseAndAddDeepShortcut(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p0

    return p0

    :cond_1f
    invoke-super {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p0

    return p0
.end method

.method public parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_8} :catch_e

    const/4 v0, 0x0

    :try_start_9
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_d} :catch_f

    return-object p0

    :catch_e
    move-object p1, p0

    :catch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shortcut has malformed uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultLayoutParser"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
