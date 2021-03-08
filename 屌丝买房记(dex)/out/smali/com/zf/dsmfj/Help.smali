.class public Lcom/zf/dsmfj/Help;
.super Landroid/app/Activity;
.source "Help.java"


# instance fields
.field private instance:Lcom/zf/dsmfj/Help;

.field private step:I

.field private tface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private SetHelpFlag()V
    .locals 4

    .prologue
    .line 222
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, "fpath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data6"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 441
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 442
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 443
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 444
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 447
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public ShowStep()V
    .locals 21

    .prologue
    .line 236
    const v19, 0x7f07007d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 237
    .local v8, "imask_head":Landroid/widget/ImageView;
    const v19, 0x7f07007f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 238
    .local v11, "imask_market":Landroid/widget/ImageView;
    const v19, 0x7f070080

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 239
    .local v13, "imask_warehouse":Landroid/widget/ImageView;
    const v19, 0x7f070081

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 240
    .local v12, "imask_status":Landroid/widget/ImageView;
    const v19, 0x7f070082

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 241
    .local v5, "imask_blank":Landroid/widget/ImageView;
    const v19, 0x7f070083

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 242
    .local v7, "imask_btnline3":Landroid/widget/ImageView;
    const v19, 0x7f070085

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 243
    .local v4, "imask_bank":Landroid/widget/ImageView;
    const v19, 0x7f070086

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 244
    .local v9, "imask_hospital":Landroid/widget/ImageView;
    const v19, 0x7f070087

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 245
    .local v10, "imask_houseseller":Landroid/widget/ImageView;
    const v19, 0x7f070088

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 246
    .local v3, "imask_agent":Landroid/widget/ImageView;
    const v19, 0x7f070089

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 247
    .local v6, "imask_btnline1":Landroid/widget/ImageView;
    const v19, 0x7f07008a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 248
    .local v15, "t_head":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 249
    const v19, 0x7f07008b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 250
    .local v16, "t_market":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    const v19, 0x7f07008c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 252
    .local v18, "t_warehouse":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 253
    const v19, 0x7f07008d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 254
    .local v17, "t_status":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 255
    const v19, 0x7f07008e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 256
    .local v14, "t_btnline3":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 258
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/Help;->step:I

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 277
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/Help;->step:I

    goto/16 :goto_0

    .line 295
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 296
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/Help;->step:I

    goto/16 :goto_0

    .line 314
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 315
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/Help;->step:I

    goto/16 :goto_0

    .line 333
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 334
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/Help;->step:I

    goto/16 :goto_0

    .line 352
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 353
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    const-string v19, "    \u628a\u591a\u4f59\u7684\u73b0\u91d1\u5b58\u5230\u94f6\u884c\uff0c \u53ef\u4ee5\u51cf\u5c11\u635f\u5931\uff0c \u540c\u65f6\u6bcf\u5468\u90fd\u80fd\u5f97\u5230\u5229\u606f\u3002"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/Help;->step:I

    goto/16 :goto_0

    .line 372
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 373
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    const-string v19, "    \u5728\u533b\u9662\u53ef\u4ee5\u82b1\u94b1\u770b\u75c5\uff0c \u51cf\u5c11\u66b4\u6bd9\u8857\u5934\u7684\u53ef\u80fd\u3002"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/Help;->step:I

    goto/16 :goto_0

    .line 392
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 393
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    const-string v19, "    \u5728\u552e\u697c\u90e8\u4f60\u80fd\u4e70\u5230\u5fc3\u4eea\u7684\u623f\u5b50\u3002"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/Help;->step:I

    goto/16 :goto_0

    .line 412
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/Help;->step:I

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 413
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    const-string v19, "    \u5728\u4e2d\u4ecb\u4f60\u53ef\u4ee5\u82b1\u94b1\u79df\u7528\u66f4\u591a\u7684\u51fa\u79df\u5c4b\u7a7a\u95f4\uff0c \u8ba9\u4f60\u80fd\u4e70\u8fdb\u66f4\u591a\u7684\u8d27\u7269\u3002"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const v19, 0x7f070035

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 431
    .local v2, "bnext":Landroid/widget/Button;
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 42
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/Help;->instance:Lcom/zf/dsmfj/Help;

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/zf/dsmfj/Help;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v40

    const-string v41, "fonts/GirlType.ttf"

    invoke-static/range {v40 .. v41}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    .line 62
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/Help;->step:I

    .line 63
    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->requestWindowFeature(I)Z

    .line 64
    const v40, 0x7f03001b

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->setContentView(I)V

    .line 66
    const v40, 0x7f07003d

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 67
    .local v15, "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->instance:Lcom/zf/dsmfj/Help;

    move-object/from16 v40, v0

    const v41, 0x7f020010

    invoke-static/range {v40 .. v41}, Lcom/zf/dsmfj/Help;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    const v40, 0x7f070039

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 70
    .local v28, "tthouseprice":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    const v40, 0x7f07003a

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 72
    .local v22, "thouseprice":Landroid/widget/TextView;
    const-string v40, "259"

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    const v40, 0x7f07003b

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 76
    .local v25, "ttdate":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    const v40, 0x7f07003c

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 78
    .local v19, "tdate":Landroid/widget/TextView;
    const-string v40, "28/52\u5468"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    const v40, 0x7f07003f

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 82
    .local v29, "ttmarket":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    const v40, 0x7f070040

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 84
    .local v30, "ttmgoods":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    const v40, 0x7f070041

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 86
    .local v31, "ttmprice":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    const v40, 0x7f070042

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 88
    .local v3, "bmslot1":Landroid/widget/Button;
    const v40, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 89
    .local v4, "bmslot2":Landroid/widget/Button;
    const v40, 0x7f070044

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 90
    .local v5, "bmslot3":Landroid/widget/Button;
    const v40, 0x7f070045

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 91
    .local v6, "bmslot4":Landroid/widget/Button;
    const v40, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 92
    .local v7, "bmslot5":Landroid/widget/Button;
    const v40, 0xffffff

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 93
    const v40, 0x7f0200c8

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 94
    const v40, 0xffffff

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 95
    const v40, 0x7f0200f0

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 96
    const v40, 0xffffff

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 97
    const v40, 0x7f0200d4

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 98
    const v40, 0xffffff

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 99
    const v40, 0x7f020109

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 100
    const v40, 0xffffff

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 101
    const v40, 0x7f0200d6

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 102
    const v40, 0x7f070047

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 103
    .local v8, "bmslotprice1":Landroid/widget/TextView;
    const v40, 0x7f070048

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 104
    .local v9, "bmslotprice2":Landroid/widget/TextView;
    const v40, 0x7f070049

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 105
    .local v10, "bmslotprice3":Landroid/widget/TextView;
    const v40, 0x7f07004a

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 106
    .local v11, "bmslotprice4":Landroid/widget/TextView;
    const v40, 0x7f07004b

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 107
    .local v12, "bmslotprice5":Landroid/widget/TextView;
    const-string v40, "397"

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    const-string v40, "137"

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    const-string v40, "3457"

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    const-string v40, "106"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    const-string v40, "674"

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    const v40, 0x7f07004d

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 119
    .local v33, "ttwarehouse":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    const v40, 0x7f07004e

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 121
    .local v34, "ttwarehouseinfo":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 122
    const-string v40, "30/100"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v40, 0x7f07004f

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 124
    .local v35, "ttwgoods":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    const v40, 0x7f070050

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 126
    .local v37, "ttwprice":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    const v40, 0x7f070051

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 128
    .local v36, "ttwnumber":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    const/16 v40, 0x5

    move/from16 v0, v40

    new-array v14, v0, [Landroid/widget/Button;

    .line 130
    .local v14, "bwslot":[Landroid/widget/Button;
    const/16 v41, 0x0

    const v40, 0x7f070052

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/Button;

    aput-object v40, v14, v41

    .line 131
    const/16 v41, 0x1

    const v40, 0x7f070053

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/Button;

    aput-object v40, v14, v41

    .line 132
    const/16 v41, 0x2

    const v40, 0x7f070054

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/Button;

    aput-object v40, v14, v41

    .line 133
    const/16 v41, 0x3

    const v40, 0x7f070055

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/Button;

    aput-object v40, v14, v41

    .line 134
    const/16 v41, 0x4

    const v40, 0x7f070056

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/Button;

    aput-object v40, v14, v41

    .line 135
    const/16 v40, 0x0

    aget-object v40, v14, v40

    const v41, 0x7f0200d0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 136
    const/16 v40, 0x1

    aget-object v40, v14, v40

    const v41, 0x7f0200d5

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 137
    const/16 v40, 0x2

    aget-object v40, v14, v40

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    const/16 v40, 0x3

    aget-object v40, v14, v40

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    const/16 v40, 0x4

    aget-object v40, v14, v40

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    const/16 v40, 0x5

    move/from16 v0, v40

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v39, v0

    .line 141
    .local v39, "twslotprice":[Landroid/widget/TextView;
    const/16 v41, 0x0

    const v40, 0x7f070057

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v39, v41

    .line 142
    const/16 v40, 0x0

    aget-object v40, v39, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    const/16 v41, 0x1

    const v40, 0x7f070058

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v39, v41

    .line 144
    const/16 v40, 0x1

    aget-object v40, v39, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    const/16 v41, 0x2

    const v40, 0x7f070059

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v39, v41

    .line 146
    const/16 v40, 0x2

    aget-object v40, v39, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    const/16 v41, 0x3

    const v40, 0x7f07005a

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v39, v41

    .line 148
    const/16 v40, 0x3

    aget-object v40, v39, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    const/16 v41, 0x4

    const v40, 0x7f07005b

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v39, v41

    .line 150
    const/16 v40, 0x4

    aget-object v40, v39, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 151
    const/16 v40, 0x0

    aget-object v40, v39, v40

    const-string v41, "15023"

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const/16 v40, 0x1

    aget-object v40, v39, v40

    const-string v41, "2065"

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/16 v40, 0x2

    aget-object v40, v39, v40

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    const/16 v40, 0x3

    aget-object v40, v39, v40

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    const/16 v40, 0x4

    aget-object v40, v39, v40

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    const/16 v40, 0x5

    move/from16 v0, v40

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v38, v0

    .line 157
    .local v38, "twslotnbr":[Landroid/widget/TextView;
    const/16 v41, 0x0

    const v40, 0x7f07005c

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v38, v41

    .line 158
    const/16 v40, 0x0

    aget-object v40, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    const/16 v41, 0x1

    const v40, 0x7f07005d

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v38, v41

    .line 160
    const/16 v40, 0x1

    aget-object v40, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    const/16 v41, 0x2

    const v40, 0x7f07005e

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v38, v41

    .line 162
    const/16 v40, 0x2

    aget-object v40, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    const/16 v41, 0x3

    const v40, 0x7f07005f

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v38, v41

    .line 164
    const/16 v40, 0x3

    aget-object v40, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    const/16 v41, 0x4

    const v40, 0x7f070060

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    aput-object v40, v38, v41

    .line 166
    const/16 v40, 0x4

    aget-object v40, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    const/16 v40, 0x0

    aget-object v40, v38, v40

    const-string v41, "50"

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const/16 v40, 0x1

    aget-object v40, v38, v40

    const-string v41, "20"

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/16 v40, 0x2

    aget-object v40, v38, v40

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    const/16 v40, 0x3

    aget-object v40, v38, v40

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    const/16 v40, 0x4

    aget-object v40, v38, v40

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    const v40, 0x7f070061

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 174
    .local v16, "ibg1":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->instance:Lcom/zf/dsmfj/Help;

    move-object/from16 v40, v0

    const v41, 0x7f020017

    invoke-static/range {v40 .. v41}, Lcom/zf/dsmfj/Help;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v40

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    const v40, 0x7f070068

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 176
    .local v17, "ibg2":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->instance:Lcom/zf/dsmfj/Help;

    move-object/from16 v40, v0

    const v41, 0x7f020018

    invoke-static/range {v40 .. v41}, Lcom/zf/dsmfj/Help;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v40

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    const v40, 0x7f070063

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 179
    .local v24, "ttcash":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 180
    const v40, 0x7f070064

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 181
    .local v18, "tcash":Landroid/widget/TextView;
    const-string v40, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    const v40, 0x7f07006a

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 185
    .local v26, "ttdeposit":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 186
    const v40, 0x7f07006b

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 187
    .local v20, "tdeposit":Landroid/widget/TextView;
    const-string v40, "734738"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 190
    const v40, 0x7f070065

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 191
    .local v27, "tthealth":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    const v40, 0x7f070066

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 193
    .local v21, "thealth":Landroid/widget/TextView;
    const-string v40, "96"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 196
    const v40, 0x7f07006c

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 197
    .local v32, "ttreputation":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 198
    const v40, 0x7f07006d

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 199
    .local v23, "treputation":Landroid/widget/TextView;
    const-string v40, "98"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/Help;->tface:Landroid/graphics/Typeface;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 202
    const v40, 0x7f07008f

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 203
    .local v2, "bendhelp":Landroid/widget/Button;
    new-instance v40, Lcom/zf/dsmfj/Help$1;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/Help$1;-><init>(Lcom/zf/dsmfj/Help;)V

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v40, 0x7f070035

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 211
    .local v13, "bnext":Landroid/widget/Button;
    new-instance v40, Lcom/zf/dsmfj/Help$2;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/Help$2;-><init>(Lcom/zf/dsmfj/Help;)V

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/zf/dsmfj/Help;->ShowStep()V

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/Help;->SetHelpFlag()V

    .line 220
    return-void
.end method

.method protected onDestroy()V
    .locals 15

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 28
    const v14, 0x7f07003d

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 29
    .local v0, "ibg":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    const v14, 0x7f070061

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 31
    .local v1, "ibg1":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    const v14, 0x7f070068

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 33
    .local v2, "ibg2":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    const v14, 0x7f07007d

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 35
    .local v8, "imask_head":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    const v14, 0x7f07007f

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 37
    .local v11, "imask_market":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    const v14, 0x7f070080

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 39
    .local v13, "imask_warehouse":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    const v14, 0x7f070081

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 41
    .local v12, "imask_status":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    const v14, 0x7f070082

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 43
    .local v5, "imask_blank":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    const v14, 0x7f070083

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 45
    .local v7, "imask_btnline3":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    const v14, 0x7f070085

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 47
    .local v4, "imask_bank":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    const v14, 0x7f070086

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 49
    .local v9, "imask_hospital":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    const v14, 0x7f070087

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 51
    .local v10, "imask_houseseller":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    const v14, 0x7f070088

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 53
    .local v3, "imask_agent":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    const v14, 0x7f070089

    invoke-virtual {p0, v14}, Lcom/zf/dsmfj/Help;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 55
    .local v6, "imask_btnline1":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 435
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
