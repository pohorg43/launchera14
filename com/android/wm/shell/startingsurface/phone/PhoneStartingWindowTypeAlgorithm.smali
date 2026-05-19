.class public Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSplashscreenType(ZZ)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_9

    :cond_4
    if-eqz p1, :cond_8

    const/4 p0, 0x4

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method


# virtual methods
.method public getSuggestedWindowType(Landroid/window/StartingWindowInfo;)I
    .registers 20

    move-object/from16 v0, p1

    iget v1, v0, Landroid/window/StartingWindowInfo;->f:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_c

    move v2, v4

    goto :goto_d

    :cond_c
    move v2, v3

    :goto_d
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_13

    move v5, v4

    goto :goto_14

    :cond_13
    move v5, v3

    :goto_14
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1a

    move v6, v4

    goto :goto_1b

    :cond_1a
    move v6, v3

    :goto_1b
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_21

    move v7, v4

    goto :goto_22

    :cond_21
    move v7, v3

    :goto_22
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_28

    move v8, v4

    goto :goto_29

    :cond_28
    move v8, v3

    :goto_29
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_2f

    move v9, v4

    goto :goto_30

    :cond_2f
    move v9, v3

    :goto_30
    const/high16 v10, -0x80000000

    and-int/2addr v10, v1

    if-eqz v10, :cond_37

    move v10, v4

    goto :goto_38

    :cond_37
    move v10, v3

    :goto_38
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_3e

    move v11, v4

    goto :goto_3f

    :cond_3e
    move v11, v3

    :goto_3f
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_45

    move v1, v4

    goto :goto_46

    :cond_45
    move v1, v3

    :goto_46
    iget-object v12, v0, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4f

    move v12, v4

    goto :goto_50

    :cond_4f
    move v12, v3

    :goto_50
    const-string/jumbo v14, "preferredStartingWindowType "

    invoke-static {v14}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v15, v13

    const/4 v4, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v16, 0x4

    aput-object v4, v15, v16

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v16, 0x5

    aput-object v4, v15, v16

    const/4 v4, 0x6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v4

    const/4 v4, 0x7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v17, 0x8

    aput-object v4, v15, v17

    const/16 v4, 0x9

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v4

    const-string/jumbo v4, "newTask=%b, taskSwitch=%b, processRunning=%b, allowTaskSnapshot=%b, activityCreated=%b, isSolidColorSplashScreen=%b, legacySplashScreen=%b, activityDrawn=%b, windowless=%b, topIsHome=%b"

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v14, "PhoneStartingWindowTypeAlgorithm"

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_b8

    return v16

    :cond_b8
    if-nez v12, :cond_c7

    if-eqz v6, :cond_c2

    if-nez v2, :cond_c2

    if-eqz v5, :cond_c7

    if-nez v8, :cond_c7

    :cond_c2
    invoke-static {v9, v10}, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;->getSplashscreenType(ZZ)I

    move-result v0

    return v0

    :cond_c7
    if-eqz v5, :cond_e0

    if-eqz v7, :cond_d7

    iget-object v0, v0, Landroid/window/StartingWindowInfo;->i:Landroid/window/TaskSnapshot;

    if-eqz v0, :cond_d0

    return v13

    :cond_d0
    if-nez v12, :cond_d7

    invoke-static {v9, v10}, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;->getSplashscreenType(ZZ)I

    move-result v0

    return v0

    :cond_d7
    if-nez v11, :cond_e0

    if-nez v12, :cond_e0

    invoke-static {v9, v10}, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;->getSplashscreenType(ZZ)I

    move-result v0

    return v0

    :cond_e0
    return v3
.end method
